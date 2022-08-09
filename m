Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCCF443D
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660066252;
	h=To:Subject:From:Message-Id:Date;
	bh=GA9gouWNIATn6wMzTUkVf3K0mh3kP/SVjx4er40taok=;
	b=QlM3/hBilW1LivLw4mv2T14rDaEU4HH0qF2e4rCjJhRlCODuf6E2SzSRXcJnWTtk
	51lhB36fmO4yRblbxsUFYpETmaGkDdrvE2W94O/NtdD5FXlTKih3dj5C2FHv6ymY8bt
	1jN9DHyFJGVGrH7wJDzoc1+B+NJeHgvAxBPC5zVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660066252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GA9gouWNIATn6wMzTUkVf3K0mh3kP/SVjx4er40taok=;
	b=OMcWcJjK2SFhompVkwgk28vt6QY35BG0QhEe9ZcyauBRHtsqoPuet5IzLqOv/24t
	frGpoRi9KwE6oQaXnhmz/DZ30J9wX5O7daUMWZ2RWcObioRSSZ8jll2pIn8ptmBkBhE
	obpM7YKFcMhQPQHnKcdcDfcfje2Pkuz7BCjsRPSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018283a8c703-376b8ce5-064d-4bbe-9ebc-2c4e0e975adf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e3e2869e9d7bdea88dcada08f0db4034735e3f383462ae9534b162e92c85a11
Date: Tue, 9 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660066252
