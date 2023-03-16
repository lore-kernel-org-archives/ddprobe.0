Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEF433CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 13:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA88DC433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 13:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678974605;
	bh=iVrN/Z6jwRItbbPD9xqjb/SV6x1u/M1gIgPBj2tyFtE=;
	h=To:Subject:From:Date:From;
	b=DDj9184pSgKXslUnrTeeQjmXIz86/eNgskMK7Ors2ag13VPgz+UrNw9R8y5+aJGpY
	 VE1tMDg84G35nmk6Hd8mJGDKRa3gKxSQ2taebxZDaui9vtkRNe7ReUcwn9RtVtHyRu
	 yL+1uWBNTPfsBCRQ9+GhLUtafzYv0N14OhG/5qFKFOyUjgJlZj3nHKPUMwuABDYYUo
	 uXlZSLZCVb5On07kNx50Yk4m9nifCifFnY0+bKG7xfWej3Q9bwVOhpAfNju3lZspxD
	 KQz1ImDGM96TOKv80memsfPcVjeNBKCX2Zm9neTojZj3Vkrd5iE7ed1AYyFF0W//fw
	 E3MZCFPi39/2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDBFC74A5B
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 13:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167897460577.14538.13290460118661294379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a282ff93ab51983f3f9809fb5e8d049155a367389016bd9b1b2cbc8184eb8b6a
Date: Thu, 16 Mar 2023 13:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678974605
