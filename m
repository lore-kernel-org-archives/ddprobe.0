Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2581B12CDA5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779841355; cv=none; b=Fd60E94pdSrRHzKd0G901AeVXYp1NqAc1ns9FBN05clDJB0HxhbqaKumRnX93cnD5MJK65EliY+3QL+xboZmfk/k0RrvoDl6GyB/gnzQlQtFODM1+GIvzJN0zIItpKyrahx79vqRW5Ppw7uScLK+T8j34o8LMbJu75x9J85AXyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779841355; c=relaxed/simple;
	bh=AEHNEiorZzIN+Ad2aLiImG6oJZxd1Bp0vFuPO2bvZ3w=;
	h=To:Subject:From:Message-Id:Date; b=PR1k6+cquCXy2auVw7EU9+bUDk5lJ3qffn4k6MP0o/ETDsUdv3Z2xMScXi+jhWWhGW+5Y3qR6ycVxmCYthaMNIK4f1gsy1JfSqjj5IqAk1ZsPTisL/dMhFxPy8ypDwf8NmvdHylKYXqBm7vfP5WxxSEv7DP5TRN3Xiin70Ohkqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4h/s+a+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4h/s+a+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA36FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779841353;
	bh=AEHNEiorZzIN+Ad2aLiImG6oJZxd1Bp0vFuPO2bvZ3w=;
	h=To:Subject:From:Date:From;
	b=d4h/s+a+6JmwhbiFy9ycOt3+GCSGkRPRHLFV5hIg8P2heSNzAGkm+8dLl1gpY/2LL
	 /kGnSbgYnvuRrUQjHNKcZX67xR7sFthwINX1YOD6An8GpaEctIxwfeUle9qZmHh884
	 9KtW6rCmkYJ1wY2QUwdcsP0oYpbDiGcfUVCB+fmtJepzPlJ7qAYLTyYc6ohgIAPh6F
	 gsP47VLjvv/RolrbCWGu4BnA93DgDdiLTX5fADTfkRe0fmSrnaGZvt/TL4dfhpRubg
	 LTxx+ekaSU7F7HvE3BuhJjRhNXPhgQ86Msj8bIA/0d/Jo4YdJ9lDj3Y1XgZn8HnhWp
	 ieawBZU/pfmVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BD7CD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984135371.2144.356779445580106943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda939bab1b900c8e8c8643f3b7bf616dd4d2d10eabdd81f2300fbe17e52a0d9
Date: Wed, 27 May 2026 00:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779841353
