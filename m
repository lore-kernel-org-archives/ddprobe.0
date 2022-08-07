Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AC87A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659858052;
	h=To:Subject:From:Message-Id:Date;
	bh=LIf7+L4G5Vl65RtyXyqUKE47gKJqa5hCc2JbnhnPIWY=;
	b=gTuhOrCe53HDDXanhFEirx+EZRp+fA2AsMJ5+dKUSlYR9ebW+a1y6bv8O2huyZ4e
	eHTxZrzbCvVR0i2QyTJA1NWE+4R0IG4RlK8I5LbOldnF3rGKH4ZtwVOrzNqTsHbTH0l
	KYkEowvL/FNj5Fb2+8y8TDYxO3FiyB0tsD9E4FCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659858052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LIf7+L4G5Vl65RtyXyqUKE47gKJqa5hCc2JbnhnPIWY=;
	b=EH9xclJqtmPHpHYeEQM3+qdUoy4oYeIxXnU4zUGcZrWDARp8TNXUwxT30J+V/nUE
	FK4V0LEB0Ra59p/obe0fOWtvQ++l3vafWHsQoGk6eLsOOtTa1v+vXa2vIjO7kxoB/Z7
	6CSmLjBn/BmVqtQnLMxCmcHoDCJ/9mkv4K4PbQoQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182773fe5cb-a24ff80d-0037-46b8-bea4-0d24185f8ae0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e938d5ef14dfe9b2f9bf4a54efdb9b5cae7174a13e241333be4a07478c35d75
Date: Sun, 7 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659858052
