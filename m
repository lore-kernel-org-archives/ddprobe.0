Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151883D99
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656875812;
	h=To:Subject:From:Message-Id:Date;
	bh=0pjiCNLtZjrRO4Y+apf0z31sc6tu+ws8QJ16y7nCi9Q=;
	b=MF43H/UlcoXp9GTg9wioGnzHUlX7aceNuDnEkbZtt5wARELZ/oCju+rOqWfcioI1
	HqkY+NABDF19TGbj1u7G82BpdwTn0EnOj8bUEPAyJpzgIOOBh81ukXZskEfPscSdN5R
	b92seJvQcsGJMknlmdsltvkmrbP+fxZjAVtQHnog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656875812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0pjiCNLtZjrRO4Y+apf0z31sc6tu+ws8QJ16y7nCi9Q=;
	b=he8lP1gCjb9e2BVllgBm21zfv+lhjGRqdWU1QYJ+hLAYniAjaGQmi2GTKfT2Eolx
	JpUBvk7ceJv2SSwxTnvogfzLzH7PVKoIN8U2/VMelxu82LYrurpq68wvCCx0CqA5Fdc
	AJynhl5g8o0LrNFE60gLxAF8r902gEtisUhtrkVA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c57e85cf-6a27155d-9720-4e36-b8ec-5a6faa9a2cb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d7de04d6eeadea76bd671c519cab0bb1aeb8fe96d2d609c77bfa5fde020f0c0
Date: Sun, 3 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656875812
