Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273A4A5A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658067412;
	h=To:Subject:From:Message-Id:Date;
	bh=ehaeKzPaLvokbeRBVrfnqeVDnrejCVq/70kKiNsmMaY=;
	b=RT7g+wJg3TtYbF5p71MIk8zG8NuZNC0hoX1k0iaHmjlPCIK6rMQ8B2JxzBhP+hNV
	FAQ06VxGaK82yIv7riD/gU11HRsMeCcPRrlASVdHV4IvybO+7XeuOXi7YVDuLbarN32
	V/FHWJInVcyfSVUvFHSMKGqFBXkqBcoUpfiM2fOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658067412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ehaeKzPaLvokbeRBVrfnqeVDnrejCVq/70kKiNsmMaY=;
	b=PoracHu4IbmxVj2/y6rpWbbDfmeG+ugVweINVk7/xDQiy9hqamuUnrXstz0XXPp9
	XIalWWzZTZI7gz0+zsfXSVtsn9u3vHCPm2NRL02eNRYboQjnH5XIbxLmQakm0RELYjO
	i2HGdoRNbyx/CP5xLaDUcBaEkXC0PKmPfRAy1mJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c84e599-3984ca04-29ab-43b7-89a3-dc9eb3a9fe91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30ff23d9614c15d9fef9f9f3cce990525ce479e9b5c3e738f2ed4e9bbfc7a11e
Date: Sun, 17 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658067412
