Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF071873
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 848FAC433F2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673515887;
	bh=1njrqVzGIi4aTTPuWXmGyQqSVggbixAgMJuxy1dSn/k=;
	h=To:Subject:From:Date:From;
	b=s6hdWuZLSF+Ke5ncVbTPxEKYgdmKJVXOPxojLEybmWx0XKmSomYJO0VIUBhB/lgWk
	 MAFQbWDtjCix2rLGhSb/9i5SxcKrRrdCaZFEur5WC/SwLc0eEGDckaowloQ+gMbfZI
	 W5UqSZL6iyvwwZhGobfnMLddECsaYw8I/Y9C9FZr+jWtNlFfP8qAFavXekv9I+LLPI
	 S3QwcvKTQVF+02hGBQVP+bnfdQveVM9Di9k/4I/Qp98dZcIB7F6okNW6gYSVPWYBZJ
	 qCnuvxLmIrPvbUq0SoyYY4yVbaSHLJieX3JjdsHsGKfOExIlBQ/RcAYqLY9VunT+Wu
	 pFFjmQEhISvhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68237C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167351588741.13237.17526765369746088215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95626e11f59c73f698e533d414494a4991702a85267f92f63072922c91ac581
Date: Thu, 12 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673515887
