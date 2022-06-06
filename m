Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279CE7C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 00:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654474919;
	h=To:Subject:From:Message-Id:Date;
	bh=VOxkMP2kf6ezss2JkXb93nBX6URenGgLFZmivLXCwcs=;
	b=BXqAebAPjm/lMPUX22eWT0PJVTIUgX7L30o7VCEFlvm6WUqqx1zaZxeF70ESbMiW
	IviIK0fwhoTqOa4vezheLFzXL6erow1JpKUDxi9MLyCiue7Hc5dRd+iwfJVem3yE8PA
	jJ8wpqYZe3iOfEvNrExZwviGd9MOQom/3R0obE4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654474919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VOxkMP2kf6ezss2JkXb93nBX6URenGgLFZmivLXCwcs=;
	b=dNPlpJ5+MkCvxeXKgKk2PXRXmpDZjCdy1qWr7qDrdMMjYR5FEymRMalEqegB2ryX
	w0aYjgAGY5BLOMCbU+46APUOIY+wxmm+Mm7dmP9NcdzSub/t7ofOunO45PvJ07ZnOS5
	Fn+pfqRzilwEGVuoG5i7zREq2OEUmXoGHE7iWY6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813663cdac-3c729d3c-d22e-47c8-9de3-886c6ef95d76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1990ab7d9f0426b94218d38e83b3fd7f600f13e3a7c31c843a1fba8c3a88b753
Date: Mon, 6 Jun 2022 00:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654474919
