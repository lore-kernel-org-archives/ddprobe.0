Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C035C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659300652;
	h=To:Subject:From:Message-Id:Date;
	bh=lUHA+ZfFwoy0Z1b4qyFl3saKSzn5FS5HO08VC7LNjDM=;
	b=DshHP7fu2Wp2I8vdOq+xiIYPHY73PLsxvRNULVw26rSFyPpkFiz0npnPfFpylf6q
	sT8kObYyyWIjzN+9fKRkHYKlI7Tb76Pml6POKNKauy9cYPu6MrPeYdeOAJOt3LG+3N3
	kcjK4YPYCbrgkZW+PpU2xcaGNtoJw62JFoWTrNYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659300652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lUHA+ZfFwoy0Z1b4qyFl3saKSzn5FS5HO08VC7LNjDM=;
	b=ByvbHTpGcuxVl2qBneeyLmL+LeMMN5igJpJJsqU4GjuCf7F2bdU4w5/bFfSimMpy
	dkSVOc7+AXnPgIEhS3rGR5MEppnu1ftJHpquSAU2BYsARF53++TlGmuV/lGdEE1qG7+
	oShbJ8UhpFIQbKOOwLghWE4OAN612EmB7Oxoo8xQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825606a5f1-ab14fc95-9e13-4e42-af8b-f019b00e9c30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0d4d5182a08e6789b49578cf6103823b6d11ff1c82b41ff223d3a457ddeba33
Date: Sun, 31 Jul 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659300652
