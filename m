Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E495123AC
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 05:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652939039;
	h=To:Subject:From:Message-Id:Date;
	bh=viNkJ2ThHxuIv3+g4r3N8gUkZZiGRHH+kepKT4+GApc=;
	b=ZPOj/0MwjlCTZYWJF0ZDPYzIGPPDiWpd3DUsVdAp2ltHtBRVb9Hevczozp7HRSyw
	3TfAfbZnCdjn9k7uTTd2Kq12tdPBX7xxSlNLeU1J2U/HU4AOIe074jiChMJh7z7kIcR
	d7xxxJIe6EhyU+TZRb/4FD8ndize013Ff/fYGdWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652939039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=viNkJ2ThHxuIv3+g4r3N8gUkZZiGRHH+kepKT4+GApc=;
	b=bxaZ84nS93bTRTK0GmD1mxTmch34uE4Yy4nyhOv96hUtGc7h11GzTniXAshaE7+X
	HEeWDwcMaGOyEYkdiur3BUibw2WiW6LH9O5c8tbx3S2IVROOQitvH6PlS8ozBkpyPiR
	rg2usjgF+E39T308c/GjnKggti2OhVtbFr5yuQ2U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dad82211-7d7515c4-e514-4707-ba38-515681ea9b7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e09f1f1d01c8e526d15960511d91ae42cccae3df96341cc55c42fb19bbe5f998
Date: Thu, 19 May 2022 05:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652939039
