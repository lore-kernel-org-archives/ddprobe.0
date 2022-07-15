Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE512F34
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657885612;
	h=To:Subject:From:Message-Id:Date;
	bh=ecDh6T/qTWWdhdjSTAm+uYNBBM6iepiz3zux+SrHoUY=;
	b=XCBXIkbETMe2phQ2sIDrQsMMAzWt26nNX5ni0iLJ6Vcj+R/VkYYcm0LA7TWnyQzy
	iXD2W3Nw+YZPyEQUQj1Iu1UT2LSqb/94/2KPp+JjNUvuo15R299zZHz743REafP6myd
	Ao21cMWVNUXJA/jA7MNkew57KuH8/sRSwHpszyro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657885612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ecDh6T/qTWWdhdjSTAm+uYNBBM6iepiz3zux+SrHoUY=;
	b=djvCnKNvwqKwoL45JcejaOEmVGwQWc8ulv0lAVd9CBZ1oDAjTjfOVOTRrGzZHL8w
	7S2KQcen7xMT4Xny+OgtkFClj3qkaUOjVp8T/Ag3sYYJmxjQtEO3AHGex1OwTpmSCSB
	9E2O42rKPmfeqEHHNxUrVsBTBCRGhAy/2zsZmPtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018201aed960-eeb65668-6ff8-4206-b9cb-3528c3cf5f69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bcb7a0538ef9f6c6e834d69c3101bbdff3bf5b03ecd5d331a9bc204f63b6161
Date: Fri, 15 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657885612
