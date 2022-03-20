Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B41303FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647794785;
	h=To:Subject:From:Message-Id:Date;
	bh=rs/B6u8U/z9/CbqXB0jm0gvpLqQii6HpzKwHn8GShV8=;
	b=CeBVqOJueuKF18b5xjUQ01X5xFkFNSpdhmEzyP8RBBkoPnDBuzvz5R6joCtL4gb0
	mVKwOvZwSL05CjE4oM7s3SrHw+BPnWAI32kusuitDq262Ko1dQ2mcmrhjau/wmPf/Nm
	cHIVpV7uTm5LenF+aUD6C6KHC/FhLOXJ2bKPSaUo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647794785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rs/B6u8U/z9/CbqXB0jm0gvpLqQii6HpzKwHn8GShV8=;
	b=O4EqYWxXZ2syvbm5VCeuGUfTgSZ2qp3sk6SKhDawluVfaKxA9dzU05Gi54cY21gg
	Yr3CG/foAvlOAFFh3PWkBQC7UkapFGkc6/tw2xokpTWa+BXR3/Uol1tF8E5UhF3v4nF
	k9tzyHF846xlclHPA2jYdR16n2FOH32aGWaMmYM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa83909c6-e0d04f24-77cd-467b-b2e1-55370567b4aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 524fed2fb157363dcb1bd80fbfe27375e14115302647f684b4f62ab906493439
Date: Sun, 20 Mar 2022 16:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647794784
