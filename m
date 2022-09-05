Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A642F3D
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D158C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662363653;
	bh=PNs8/Wsr4wlQhiDRN2vWml2Cnamv59t2zaZ6PuHdurs=;
	h=To:Subject:From:Date:From;
	b=MGGxYaNqGWH940084wnPDB6dmneDWTnCOqsKgJjSDjF8VlXNb+jouCq5uSiwM5Q+H
	 R/9DWDIc70DVLFgu6wkD/zfLJfSU+ZRxTKGfJw0ouZ06KM8Sdae+OdjXUomvh6QOGv
	 cBzraHRLzcB6qBUAN+gHQbKwbvgKJSJfeBBI/u5Y+suOpmHV65yAe6yEw+CDo+ySie
	 xRkHdvsLvLSY0R6qAePoVICKKLUVQSKO5VpDpRFbNWIgmT4dCOmdlpYyvsicICHK5M
	 0D6qRL4pJnokTHTDy+CgR/JPchLch5EQD+VWucUVtXUvtp/2YrtB/3fj8LolU2eo5C
	 QpflZPlj3POeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A6AECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236365332.16713.12118166833900808371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186d4d0417f58c657a0058afa9253ba99da02b85af058c26058e49af77aa29b5
Date: Mon, 05 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662363653
