Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CE02588
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70051C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668966654;
	bh=P8Jd6YolkZnZ7pbDOM/vPx1O/8Bh+mjmLr0gL93VXPY=;
	h=To:Subject:From:Date:From;
	b=F0S/qujRD6i1TtvTD45EAzcw/tRg6iBFM+7XJqyEjq5wFd/6Rs/uPTzIb2zHDkEBK
	 +rijB2k/EuHry/o7q9AcDLbuJbV9ppP0YLQW6XT0X2fg575DFZf7HDH1EDufMWlOmH
	 v824dfygQ7LDl11KzVuMEGFihvSbyD7CmnhKEAicqSTzIdYtp06HUGnQjPrEw/a9QQ
	 QCtgA6Lwe3MDz9qQLhv/+i/IVNcZ8/loG/8Nk2fN+DPdp7JPaFeN2/EJun2yio4fhI
	 iI08949bH5aChDeqbNpUMr1EtvxGXASX/89WNCo8emEY+ZpKNmsVHRDgJjTZW9JsTr
	 ZNJ1jthkwUszw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5874EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166896665435.18647.3295586092934107274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb684826cbebd94c317a5324d761d3d8cc6099391317edf677ca3161d135c828
Date: Sun, 20 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668966654
