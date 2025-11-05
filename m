Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262F72C3253
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762384194; cv=none; b=W0iJAQCKfMwGCjP700+HEQ4w63y9S6EtjPeXN8jZ2HuYjoLbsDRg4i9ZDk9si8Xd9IObRe1DTzJn8WpxSBEs+bJtUi8l8ZM3BT28jUYCcCmq1lhooil19W7C6Eygd7WfM8k3Y3+v2YUpOUn6x990Jl4VhQHAtWI3Nub4K9fv9xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762384194; c=relaxed/simple;
	bh=hpLsInxL2i4unrKtircSJDi2bEoF4k3QNQdEs33xbfA=;
	h=To:Subject:From:Message-Id:Date; b=ilMxdaW27QCiWLDYlzI67v3UWZPueDr5mNvMsN/4ccH89pDygHqaKxYTr9Rpa9V2SnI2AIkx7nq6foy/TGILrviv+N9IRiQSpuvjexPo9RI5dGnUVm5SJ7dJ+G8tGfxdn2Az737Qm1PG+HRBUXbSj7qT2E7Bs6uZiQ+3H10FOU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6/ffsrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6/ffsrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8ACC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762384193;
	bh=hpLsInxL2i4unrKtircSJDi2bEoF4k3QNQdEs33xbfA=;
	h=To:Subject:From:Date:From;
	b=U6/ffsrIoYZ3rRUc0jcs7ByUP8+dxS+t1TIi02kJqH1u736g8s8SpLqaOq6h8Pba9
	 N+fUsrq9y/gkNN3VpHBAMPMkY+bHCxBApxehBm1VVIwMf6Q7PQ4OvdW1vX0hD0vWlU
	 8+31uKydUWj7qopwji6J1iA82EvQHvt4LiRbubKNG0yN+q88MpNCkzdDThFVlwWbLx
	 sS47ztY5gq8Rd7QH+ohgDcGYz/Q2/YG6HlSHvLmw+XtsjG/sePzz0ueGfalHYl3zAS
	 B5Ed8KC2NBRMtpKXfqRDrkSih7BRkv/ssMpEJ9Ocu9cYG8a4M/QnfB9JnYq9ad5fcm
	 Ooa6lwgls/Sug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F843CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238419357.14359.15862639672045644462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5861f0420abe90768eb4dbd45ae374295cdc03256eac1262e494cd9a84f8d678
Date: Wed, 05 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762384193
