Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167E933E9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656086812;
	h=To:Subject:From:Message-Id:Date;
	bh=PQhh9GGb3PYi2llEMABtsahGbdmAUo8yVdem2InJ8DA=;
	b=FHg04OzukQHqrS8kTvCgltHRvuB+MFQ8rliVPybpz/NaO4sISQmTM00IZbntKIv1
	Z4q6lc9il8s9ypbVK90hf19IVm/dpvupdsZibHerDgoV5QYO8PzG5Ouq0qsdgbfh1/o
	jPN9JrWMlS67DkXKVFWhvlt2HKMFG9eub1RWTOsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656086812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PQhh9GGb3PYi2llEMABtsahGbdmAUo8yVdem2InJ8DA=;
	b=Ghgi44khYZVNCtE4jafRlfO0VoX7RxRXQSmkFw9hdAM7W9pPpj6aYz0NALacW6o9
	ys/XKUbowu6Bo38QOWBqi5ktqE5QSsk7rUQwKQVBS2kzOD6NDAOXDGgmF96Q0YGs8rp
	qIjPYL0HA86JhtIHyEjH3/RNQqWRLe7GrrgcWo2U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819677569c-5cdd59f1-0def-4834-9902-9f46fdbfd934-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98bbe7fe255888c5ec22edb8ecd899941d758277ac66d74b9f78154e35a5d91e
Date: Fri, 24 Jun 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656086812
