Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4336322B
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704A1C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664983853;
	bh=TFQ0FMBdflI2LVMbs5uxp1zkIwZLaTWSXasFVuHeDdk=;
	h=To:Subject:From:Date:From;
	b=saIeJJuWtnrHh39ZanumB4M19LN5QcxlRMjI7QVxQkZKmzbsXhT7l/GzaVxQ6+SO2
	 zchyKBCCGJqZFgDvSfYUty3g7H6EP5o4op8HpqcPtVlI1xHlgXrC2CPTYcoGl/VZtH
	 OkFvX/r3nWQ0F6dkysRUiAW4nxqk5muSBsIkToZIDLZtBo2fe4Hu8MHBpXV25/5eZk
	 sVzLMzDkGRArNrHi4WqwLqqzRnOxrQPXwRhx/F8bzorkuPJlGMhEYivRX0V2ltemG6
	 Rh6zgNNvdcOf6qy7u1tYJVkdMaq9bq4NBTsGjmFVWGWtNHMem6R9zlKIHB+7uTZ1Iw
	 oICW4UdbmU4dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FF6C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166498385334.18899.14098794329996072970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fcad6acc3b8f2687c24677224d59715cf551215f0f8a0edff60539ffcaa42cc
Date: Wed, 05 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664983853
