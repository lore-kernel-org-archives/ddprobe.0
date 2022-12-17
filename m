Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0F18490
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8696CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671309687;
	bh=w8I5w1r+lMvNt7oWrboCiG/+i06hDUOFEw63Ydp9i2Y=;
	h=To:Subject:From:Date:From;
	b=LfcZ6NzuYQlOUzlFVpUsvBxiwfvFi8lBzQaY6bTfybzRt8ursDT6iBIEAUlyCicfj
	 htvPeJIMu9sc95KBQS8SEvg4Tb1Z4NfPaV3Aehbq9oj31UZAaey3FNes5pNCq2psq9
	 +xK6xbVwirR6BUL+Xx23LIx0dvy8hoc84n0/xOoH9sDL6/oBBMjreeISerBx+zTcJG
	 4znoXvhF1OxjMeIwNgpGJEZhF0eqnDBP6n+Jft91sC2owS9ZtMw6zXmou6PTGrJoJ8
	 BHGjyS20tS+pXqBzWICDmd7tcyT0/WjDWgZKU1O/tEx5G3XkpgDaAG2Ullb80bruS3
	 fBnxMvVBu1t/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C0FFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130968743.24955.1685307693495185078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1e10a1564d6bc02e24c9ad23d50ea59038adf7597b8d9a3dee93758bb42950
Date: Sat, 17 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671309687
