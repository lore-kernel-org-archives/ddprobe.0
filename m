Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D063E392
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D9A5C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672722087;
	bh=VF8iCv995alu/SCp85JrwOctjFMIC+nPVKDQdJSJxX4=;
	h=To:Subject:From:Date:From;
	b=LypKhEj+PnIZ1OkmGqQuWI/2aPKWWk4uLkmmNMsJnt7g+k+sv0C2B94AURK7MkSVf
	 U9zlBbUG9IA0et1hsQJKSkoi5Rs3gZ5lw4/bBKQKGGpbYriRBWicRQrbfCEUQpM9xt
	 AEQcsPHw6FZE2hHvsNMeZ+0nc6Nx8TaSnbHqCJZD2Ki13rd/P1rzniGqPFJw5rjnNt
	 gjvw2Ce05TVB1gLxG0t1Ws9I4yR3UWcWW2J2rfKCabl+KRpLq0Z/0twBv+OBsQ5jNd
	 ThOD/NrgZcQLxNVOZyjdS6jvHUf8KIvzB/UHI6r+vs0O8BtYh1/8DXaCYJwdU4ZkG2
	 URxaz6fIONrJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626EDC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167272208738.6167.1249681461844925465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4005c94ac021e564c6c860ae0f9d20fda783b7aa35f777c0bf0bf801b247ab
Date: Tue, 03 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672722087
