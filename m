Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02886435A
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 12:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648470478;
	h=To:Subject:From:Message-Id:Date;
	bh=FrYbZX0H2YmMg1/N3R2Mzzmrx+lIDd4DkN025fYF6S0=;
	b=md2gs3MnT1vW+guKswIQs0g95+XMS41ggNC0DqzVLS0uI8G4qw56hcGi+0bfWggQ
	FEtYx2XG2xpKEE8DEDvD57KZ0otCABskJ8GjqHkZLGFW1mQ9FHf6r6dy9kMzOqQ+9mp
	iSogVJJ5UVQAvKzROeuU+dvhnisf/7JBlwyaoqYU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648470478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FrYbZX0H2YmMg1/N3R2Mzzmrx+lIDd4DkN025fYF6S0=;
	b=VUT8cNWI/l50jAJumkLZ5ZbWzoH5cO/Q6acgBK4Syo3UD/FJCbEUg2ki26VAdyOn
	ahI7bACwBGLGhqzpuSLklL0t9vrD1FNiRJJQoZ1p90V55TBjcEm6J1krnvJcSsPYQC/
	wRx+1cddtNVm4uenUhmFZSFJ03CQvZLUdD1oTNPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd07f4d9d-862af595-6edf-47c4-b740-903cbc918580-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebc1713477604d01a11816a4580c0e74c55c8ff258d6fe3e13bf9e78488b535d
Date: Mon, 28 Mar 2022 12:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648470478
