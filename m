Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE845EA8
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661305253;
	h=To:Subject:From:Message-Id:Date;
	bh=O2YXEQYtGNkIpST0zhJxgd1jQX7+4YoxeHN+1otg174=;
	b=jpURkuP9EDsJejTNsM6SeuNbz0O7SethuJFZ1Ik2WylZahpXlp0SSUw19K2EmMrO
	IiXcn50adz4/4AAw8vaSbLWCyD1qaXFz9yYH/krbx1byeF5aRMSKLT/KQz8ugK4mwKn
	3Q/VslqvOcpXVzv74vyMkMkeLMlep976OcVqN8P8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661305253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O2YXEQYtGNkIpST0zhJxgd1jQX7+4YoxeHN+1otg174=;
	b=OapHe9vKjgDxNQ5PVnHamKQ0QEKj52kkL0g8wCkSHfweU0bO2FG5JBLSaNYa24+E
	QHsuKrBWOPjIHaC4Y7qZTsAeooJrXI3Byl93qO7j2vIC9nZ2JBLvDHy29YGFrfBw96l
	iRjKgus6KV9/sBMC3V6AvzgS+5Lkw7YBHtNXuEIs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cd826aec-717ac095-abc5-4e33-8855-9a0b80f2da25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5eae15f131b5ff88198f0e97d5da683b1277ed51e95f6697838d5fbf98559d84
Date: Wed, 24 Aug 2022 01:40:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661305252
