Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F3428ED
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95D6DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668507054;
	bh=MpILGRMQo5pfG4HAoNCqmbaOzuSJm7rOAebh/lFMVtE=;
	h=To:Subject:From:Date:From;
	b=sGbaAGHmNguJwgMoh6jTqnOnLSGDzrZZmQ8zoAC6fUJAwHubQywl+IdkpI7QkmkZb
	 xs895UE28u5aLpafPS91eUZ9POmFkt6NVcZvOcYBxMfLEVoXazT9pzDyBJNmEgcNfW
	 67Hz05t92hhc2ZoFAhZPx/hueOlDNRhVKAjMmo5t70yNAAweO5xs8zWlUNBIBpwF6o
	 ktu1L749HzIrbL62BmGviFrh4XYkpBUzAzq3GCQNeGq86+IWgkYZR6/cnoF/GPyCvA
	 r/3l+hhAGtv64Mi5EPp2+gWEgvC8u1kfc7gFXesZbcVroVfbbgLhF+fcp9o9md2g+g
	 LTXlS6a28x1Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F347C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166850705443.15735.11818430241264809187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f344de4a3fdae8200238b244c08b023db537c2ae337392620c3560c790d4d0
Date: Tue, 15 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668507054
