Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEC43FFD
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656451012;
	h=To:Subject:From:Message-Id:Date;
	bh=JUoF5O1zqkH0OSIJhfRbAtDyjDUr4Wbc+Gr5V0SIhuI=;
	b=YJdqF+/Am2OAJuaK3WlRZx6NYtMiSmp/EjIbd4A2Lbi+SfZgLHUCKdXtP/vn+iL8
	Prl0rIXpzKezgGJ8mv7CeKX0bQTAg3wduFmmTws0VXnUf/uLuhFMmmqgHtIQT+7HQ1X
	qR3uu++H/nEfv29+lNDselXlQbqChXknroGxUzSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656451012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JUoF5O1zqkH0OSIJhfRbAtDyjDUr4Wbc+Gr5V0SIhuI=;
	b=LCSG6gJsJRch3NTQkm5BLKZU3R67n6zPh0db8zsAM8wQ7gHJ5ck5ihkg4MdvC/yD
	RRttLtHS0lButeY56yslLm5fP8yjaRz63b7SgseikXCsDs56Sp+b4quh7YKjENSSJOp
	/522awEcl8Xv/zwoZiMrhcXguFQ6n1KmCEH0RNaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac2c96c3-1f36d86d-9ea9-4a88-b374-d1d3c997d503-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2dfc50b831bfa3e7970f5700f598652b4df14487509fc7c4118b221a6a0bca41
Date: Tue, 28 Jun 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656451012
