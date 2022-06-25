Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F159729A3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 18:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656182812;
	h=To:Subject:From:Message-Id:Date;
	bh=BFw7aalrO4IIlI1XFgY+s0tVV7iMGlOJRqDMHVaDLgQ=;
	b=C0ipgW9pYJf6z5JewfRXthQjF2iN12rOB3JYcLamDSgvtR9Osnjlc2yXgiR2sEqE
	JxvlKXw3KckQaIlyZRjZ+SGw9kHMuNKuifFX/MYi5juX3bYNf7VL29xIPgX0aryuVcR
	uwUQ2sfOjuAQY+gUG9MLGx+3ESY4nD9343Z3GEho=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656182812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BFw7aalrO4IIlI1XFgY+s0tVV7iMGlOJRqDMHVaDLgQ=;
	b=ZMAxnR2b/i/X7yHBUEix7cYtfh+fhrfmZDv/ETEaBh399NGqjtpf2Ab2G3oNzw6M
	Sw5P6bvQNU5AmliyzMkhM9VLAFOTXPHAndssRBgzIkDhEiUrMRTo7JY+LJhEPa9fr2d
	0kL33wnloshoeCD7frqbGgXouFW5dRDfk48k+O/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c302e98-7458f7be-b2e6-4792-b5f6-f8854c7a7ef9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65013faf8bd2a472587644be06bd715a818cff3f21a80a5d5512b92ffacceea4
Date: Sat, 25 Jun 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656182812
