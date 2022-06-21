Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05931A20
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 03:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655783579;
	h=To:Subject:From:Message-Id:Date;
	bh=DAPs2L0F17lKBD3p7X4Fpl1aHloc0xUkomBxK6WNJc8=;
	b=btYdrWXV+dS3xwGcrKIawvnytLc+v2AYo92GGbl8mH9JHZmx39vhmgF03RklqEQI
	jUK3VhStW1bvVaOWoVspfJcOS9hQqTyUr8W3KN8AmfaFz04Rma4axvO3rj7c2gTne1x
	dDs5HNtJqi2PYg+wi1DWevsVVfoXtXm2gdJnHTik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655783579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DAPs2L0F17lKBD3p7X4Fpl1aHloc0xUkomBxK6WNJc8=;
	b=Yx7sMad+Tj1e17lBFHmEG+N6y7DnkrMIUsJWcLD6FsonDJ6jYD1BZHgLs6ShZz9h
	q0MvLrAr7erGbkDHe8i44vhAimFryWtAgfnqmRimkWTlWLKiddwpknU50rC11FM29pp
	oJQ6mp7zZtQFuUeYqaUqkUBQDgmhWZqZdDbdt+qg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018184645e78-a7c2bf44-3d21-4e4f-a6bc-68a82bb3e4eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ad0294c925d4645970f6a257963a6e23a31428f7a806e25bf617c94052bb07c
Date: Tue, 21 Jun 2022 03:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655783579
