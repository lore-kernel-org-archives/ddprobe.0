Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E245D23AF
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660410053;
	h=To:Subject:From:Message-Id:Date;
	bh=4gEb6rTP73TncHysAE1ifM1gK8ARMfcAOT/F3ZZeYNg=;
	b=Q/le//hm4w4pNIIRjaiOdpRgHFSdamoLcyzwoucjgxYmAW/VY2elDHvk5mso3v0i
	ketzYdhlZ6kKCZLSFLcC8i7Y/J3vp7zbcva/FhvzHJQB3UkJAhX89eOl/xkV2CBhDrU
	yn3epmOSU3B1HNe3/sKhBmFC7wmRTRHceCk/sXnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660410053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4gEb6rTP73TncHysAE1ifM1gK8ARMfcAOT/F3ZZeYNg=;
	b=dLvbe9L2R6ySvaxOmdPn88jkt2um0PQdhWpKDiboPaHGw3q+POU5MYnD5d2eY0fv
	HQw7dKdrBX6CY0u0eoklmaPawgTiAQUjR+5iN5u++Y+B9PfO7380lzw2FzYFMXHU5vh
	RO6c9dE+Wi8t/w0ulad0ZIUfth0B8FuO47sbLm2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829826bfea-714b5751-e892-43ce-ae46-d4dc4e6e63ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23ae79fb40c4116d0db119a4fa84681b9399810efb5b6e0d25d9def1e29d39a4
Date: Sat, 13 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660410052
