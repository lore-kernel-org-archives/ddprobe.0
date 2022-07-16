Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C673F362
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657954012;
	h=To:Subject:From:Message-Id:Date;
	bh=9iOpoiBrq6K5cd/SIyvq3RRancPKRnRezzFQP0WxCXc=;
	b=iWsLVQAhTbCjUgI5DuRgECpO4YilSa39HZUUJGk4O4E+Jiy1WFBKVQbBBDq0dyi+
	9q2hvxLQK7Xjxs+BZN40K/Z0HLSzzSKl4JonBDhRIaglvp5XSNLW6n38/eik2Ee8q4S
	ZPEdu6IU1GpBRnZ+z/xUP0AzTKPwqJLfJNFKsKoA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657954012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9iOpoiBrq6K5cd/SIyvq3RRancPKRnRezzFQP0WxCXc=;
	b=cQehab72s4lW5IeBogep4LKcp3qCsAv1+2C04wtTADkUxIqPe0Tr2oQNEug60gHe
	hp8GrGnxKN7C83+e5//po1zB4xO1i1sU56sQPUl2PZwrOqG3V0clHJc9yhE+00w6PqA
	h3w4KRfFxul8n79WB+MrkoUrNynToUaO22xsXbiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205c28c93-c2fd7b0a-4063-4226-a95a-80554d277851-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d847eb84cb6d1a07be76dd97b2ca48ac40c9ddeda032c2d9457868fbd8c766d8
Date: Sat, 16 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657954012
