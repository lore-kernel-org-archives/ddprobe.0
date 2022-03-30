Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846917B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 15:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648653058;
	h=To:Subject:From:Message-Id:Date;
	bh=mkS9erk3V7U8lhVM9UlSNZe/RH9Log2VxxOTec0nIVs=;
	b=krtFhRKXmWu+gCwU3hxIeR8UfkLRMG93BooX5LX07hmRX6GsHSWU39OmwTKuZVPk
	/qmnbSZc+Hixvv7rmB29Wm7U5pz4Ma4AUDsCfovuhg3ur3AFSOFpAt26UlG65wYvvkA
	g0SclRZQCIDRm5QEHTmP5xvZ5QVIocu9jaA23Gk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648653058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mkS9erk3V7U8lhVM9UlSNZe/RH9Log2VxxOTec0nIVs=;
	b=Z8PwjtuOGE1USIEgccP+lmGrjRDKhiVFa6xD5aGCss6Abj/0iVIlBzoWTaVW/tm5
	QdrWepaHAYhQXFrdzG+D/XQytqWetk/0CwSAgcutITv9EDbeyj+t0aKKKB9rSqV7WlL
	VKKlq14X1pjTjPVvziNCYyRVOkOhe+G6fR2Psa5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb6140df-76141738-6ebc-4782-b1f1-67bb7df346a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d160fee700fbdc570937730cd42c4bd76ef1b79736c35c80928eff015774a5d0
Date: Wed, 30 Mar 2022 15:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648653058
