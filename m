Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88123EC7
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658924452;
	h=To:Subject:From:Message-Id:Date;
	bh=eJJTHinMO3NlDogBvgxbXUddediEm/WumZnDaWHih0g=;
	b=O4uK509a9eEKspTiAd1nFNbDo93Zh1dTZQe9JJHgcDMeBWZmJ2QumNp1z+NaVzwe
	AV2rXfEHIkLpobCp12oJvu9Txe4XloUW5vRnvxO/Wv1wPtpypTTDEZ4ZPSsAajkd9ps
	ZvDm+DRQxkTt9L/gFP95tjO0glUFDA9ZAUmnTEe4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658924452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eJJTHinMO3NlDogBvgxbXUddediEm/WumZnDaWHih0g=;
	b=IpG3Ftk0zBs4cw8PVFJUMu+L88zirzTfLWERv8/+hkCRzGc7KqYSK9u27CcaEJhJ
	MQi0KFp1176WcfammK0wnGJmFe4zB8H9KIGI8eoAKnElyccT6Zt1f2ejW/AxwrkNzRy
	ALzd5we7ax0XK8JmNHIseB1VBhhzZQknz3KFD/08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f9a4b28-7a6ac0bf-0e8c-4928-823c-86606c1c9947-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8844eac7efa68c1dc0f1fb716d06caaf36121d2c0d2671068bb47b20c47f4e1
Date: Wed, 27 Jul 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658924452
