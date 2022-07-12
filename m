Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EF32CA7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657667212;
	h=To:Subject:From:Message-Id:Date;
	bh=dtAIyEMmuo88fryjfU0g2JtLGGIZuMCKQ/Bz8VOMB58=;
	b=UQz/FSU5exCga9xRwY3BeSJTnMUIr8crIQEpRrXoXuRyYrj3zLDmcnCJ4WgE6LA6
	CzSr2NiGX2HTYRZi7GqdTMZI3Sb07KQiuibuA/nzQy/qElWg0384F7KtFnKJyN55UpS
	HMAcLt8zob99ik69HZxE8Ex8fRTwBXYPLtdHrUCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657667212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtAIyEMmuo88fryjfU0g2JtLGGIZuMCKQ/Bz8VOMB58=;
	b=Pk2PWqa4LIltKpHReJX7Oo2Aj/FUSE74JSLB131xQJ6onvbCtgS1o1dPsXsaIlAL
	4gN4/JJFQ/mh25W6g9z0xVoFHMIIs+4fZMoLI0wYU4anEOqRo+7z77eWO2onYPB75QE
	0NIsWIpAtfZa8dYvLlDolRd7r/Qt9hLoVOGNnh7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f4aa5416-42529114-7f83-4691-9787-83d707d952bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dfcd9fd75622d33b9c389c043267b39dea0ef436e7b2846af46617a30c88942
Date: Tue, 12 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657667212
