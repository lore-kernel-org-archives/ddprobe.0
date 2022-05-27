Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360A41851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 07:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653635879;
	h=To:Subject:From:Message-Id:Date;
	bh=SHRqMGfBUzZddf5HnBuhgjrJEY3ijtCLhfNHc/NpMLg=;
	b=YtIR2pk0jr+xerqvMKedzrsfOMy3Yv+fEYL3zbYa/ulqQzkcRoRAD8uPSK/zHVO+
	xOeHy4cfA/fiUyUR6e08eCpHFUURosYiKwpV9zMMWabOjXlna6RTbbKyqqWF0oOc0kO
	HVf01gf/54XudbXneV8UHBrfgVYwnA7Pe+3q3B74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653635879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SHRqMGfBUzZddf5HnBuhgjrJEY3ijtCLhfNHc/NpMLg=;
	b=P9HvWlVxVnK/lQtfg5RpaGMIRnaRfJQw99Pvjayn3VQ751cfgWP6hhMrP3OMJrMW
	mzJpcrar02txPjfMHyJNQH36vpV4e1ElJ5fua6zRgVmF/sWMwAKBbkyWOg8kDZk+CCK
	9TRjbj1oOhSkGICTZiif7q3dgTbPDscRbqNa5niE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810461115c-146ec4a6-dce6-4b61-a371-b235245f1e66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8860efb9120476e63a584ef1f597bb8a4b1784c75fce65ba91fc34dcd5a2cd4
Date: Fri, 27 May 2022 07:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653635879
