Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B43623D2
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660911652;
	h=To:Subject:From:Message-Id:Date;
	bh=IpTX/hAqY16farH2mlUzVhQv58lXVFGbcuzmdjmKl7w=;
	b=WeQRHYd3p0683nre6cuj+1NWBNYpfujcJsE0g4gK/ijbOW1v1tte4Njq93qYrblx
	fCe3uip5H4EOiL6wOeHwV+NXiM9S5RMSKNoJqVprWssNj2xiDS5ALnVpkJjzGqR7d1q
	50vESW820AUMjNg/OcozQDXWcO7ZD/ze/toBRAtk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660911652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IpTX/hAqY16farH2mlUzVhQv58lXVFGbcuzmdjmKl7w=;
	b=KJWTPNo1XEphFIk886BxKRsBMWjdqC3n+XDQAfjuKLxHo1rh0/JGajkR2hZDVxQF
	Tf0k/Ea/Dx8MZtTFWyPyvGolYUwkX57JlwxPLkWbriHfFW2/BB1ktAEeqG8/l0n3N5e
	NsuKwsQbRrrOPxbXrjoZnSMEdCF2MLRis0r8PsQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b60c8f09-a56db980-658a-4554-adc8-a5e572247aa2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91487644814a3eda57655aea58a989fd98ad49a214aa51a3850526f4c5637430
Date: Fri, 19 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660911652
