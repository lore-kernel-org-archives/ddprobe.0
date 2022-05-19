Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CDC2904
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 17:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652980019;
	h=To:Subject:From:Message-Id:Date;
	bh=7JjA5u5EXuR8GceAt9K3auyVY45QC+hdWb+tBHi0cGE=;
	b=VptjrbRJELp7cGWzulzv9c485vdUVkdMKG3eUf14P6dZyHgiqSRSgsSaAZ1RtbtX
	YcMuQvalKenZuGhi7wNYQMESLBcEfVEz8Kym+EMc9ZIOFE2eGzCrJH6cpNWSaSHciM7
	9JY4PRzXNyhi0iwFwmjY8VgDF/QzPYFcQoT7VYVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652980019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7JjA5u5EXuR8GceAt9K3auyVY45QC+hdWb+tBHi0cGE=;
	b=cR0nYYKNs6DAimZSGfcE6L3GqvKvyCxy+Nf7HECSecDplbtffEZyilDsmbbiZt5W
	RTSKPomsDJXjkh6ZVuO0bvzDHUvkfw38eOAboJ1Aueu4bvlZxRus2fgWN7XOJNV+gLc
	C6ue1gD+nrCCZPszwEHAnJEj3HvviIwOMEaQtJIU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd49705f-c39badb5-23ca-4641-8c9e-82ff281752d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d43cd14543ca1cbe2bf929b6e89faa0715dcd64f438ec7b8f12f0bdae1b29ab
Date: Thu, 19 May 2022 17:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652980019
