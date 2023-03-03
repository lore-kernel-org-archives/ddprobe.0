Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9E279CB
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 14:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF649C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 14:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677854165;
	bh=Enlhq+2xMCJKhnXRMF3KwpEkWkdWWWoGY7Ju/Z+pvWc=;
	h=To:Subject:From:Date:From;
	b=kiNVBT/Oom7UA1FdqN0ko6miaHSYpNz9jyDRkMHykZKiMstVg7aqyPZYzlHJdloNG
	 yTn46pqHNOTj0/Xi6SIt9zYwP1DdeR5LKiOj/cWbIx0HXlBP9T8BFVOFn2TajwrhQF
	 BTrbXWCOdIrt38pCggqlrc2YYF0/yqSXorHcnttIdf+2P75TzsUQZ2Yvzc2PoHlACO
	 YJzYJHrZ4I9NlLa8xD/RnorGfBir5zlLV0mDdrUkwpETrDXiNJz1EzzAyFWY3Y0eXa
	 UKpv/pXVtemjcKNDuvsl/KLR+vmx2OwMsxdh6ZzPqDZQHD+3npmmokdZmdm6tDj/MO
	 UcAuFHT/mrAIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6841C678D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 14:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167785416573.21859.4720349433929151651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 556f5f5c4940d2ad6848753580ef1e07e4ab0f4ef3ca24f5b7a7b1883fd38f0d
Date: Fri, 03 Mar 2023 14:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677854165
