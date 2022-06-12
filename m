Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10EEA2D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 04:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655006819;
	h=To:Subject:From:Message-Id:Date;
	bh=mpO2W78YmyfQ1wPaosX7TR6QhhVi8cAcaZ0NuDJfehQ=;
	b=k7HLGfLU3g0sIbdiy3VtfI3Df0DJoZwXk4l5hpL8amLaNHcSUo2lsYuqMvkge/6b
	FHm7fQ1HlxwaKGcnOifjYwRibbYsp5sAIfBv6560zmxNe4MuelPzHkIoP0y9sxnU3/t
	RLWvVAhYt2MlNLyiLTaJT+QtzSID6Vm1PDVFzGS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655006819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mpO2W78YmyfQ1wPaosX7TR6QhhVi8cAcaZ0NuDJfehQ=;
	b=i1rTmi9NI6xGU7zlfHwaMbIMXgMooXxpCGiEJbx+SIDe0lUJ7h2Z23nxAdA1h4ng
	rbjJJvXcna6WLD/fNnXtGydHpytW9Ubk++WdzFL0YyXjfGnFjVu7cnQJv8XZgBJ1fZH
	ZfF6AtAmlSB2uuYtBWheCEKb82ZFXiez1MKYJBw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815617f3de-8e96f9f2-4c9a-45fd-9cc1-fe39cd94c31d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4211603b04ccb980b8cf03b3d484f5e05595116c0fb62fa58854bfe8f49699c
Date: Sun, 12 Jun 2022 04:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655006819
