Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE648491
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B26BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669587054;
	bh=Qp40ia5yk5JbA6I40RFwcUqH1q+g4QmIfcKxq+GWnbw=;
	h=To:Subject:From:Date:From;
	b=Paui8P5UEAYWtGligrZW5ohWOpE0sapX4drs1Y3jfBsTaUdMtNNFLNwlemhHH4RFk
	 TJH9orH2RJwFfGB1viD1LJEgwOKIeJ+iuGHqZeE/NZLtLKMj73yla+9+/L0FvJeVzR
	 jquucVv6aXZMeZeWLLCU+yNcIIa3dWjF833QBAL1++U39k8XehEpkjh0AdEAx55sVy
	 ZKNlisu1Hcg1sPKE67wC2pcw5SDmS9c0TfLnlpodNNtn8emurYyJiDeMpmoJ2rAhaM
	 J5XXmroR1QZ0++cdZUVtZ42Fe0B3Q7ug4Kmk64D64+5LpjGfUq45ojrPLXBK/hItk0
	 MyrkQ4UB8GPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51164C352A1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166958705432.11831.15573039895912997788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd69e916f79f6d1e128e58ef5849e3cc390ad3163396cd1fb209c6c580c157af
Date: Sun, 27 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669587054
