Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D78EA1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 11:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649590558;
	h=To:Subject:From:Message-Id:Date;
	bh=Z+ObHcKJQTMo3lVq5IqGA4kgrjrAwkFiNAkNtwy6kI8=;
	b=KOjxnlsLQZ5STy4xAjFzCQdK9uWqF/8UcgQKpOOaLYWkDYOczud0LDZSpeEHKhUe
	8vblhblrobVVr2Ck0k5KI0dh+jFg/3kZsiHXj/6PBnlmzvdtHqVRTFvE+I3sEea7TWo
	4z5bxxS9KrTHV4Cta+3+DWCqPXlbuChrfp3EZSBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649590558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z+ObHcKJQTMo3lVq5IqGA4kgrjrAwkFiNAkNtwy6kI8=;
	b=i+o/B2AKf98GfFPoYJMaFSiFDoq92I5yEfQRT1FpXsxejm41V+o3TLGbm3doeiSg
	mb/YOo1CY+tPcMv9R5Fwj5QFyv4aTzAhMaa075EbXrwTXtViGt5bmwH1d3pfQQkgxP+
	HQbX7yRIuZ46FTTgGvvdr0E7RR0fRwbkr5oYGc/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018013425e1d-d6689cb7-a5e8-45a3-8ff7-132dd721a13a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f1dad09d70d80c32833aea3d8758f10991b9d2d1a5a53c9476dfc65579cecc9
Date: Sun, 10 Apr 2022 11:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649590558
