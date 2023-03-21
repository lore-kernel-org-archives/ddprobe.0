Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAA88BE1
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 10:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED534C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 10:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679393886;
	bh=vEd8T5oqgh99T6UAeXBhpcRi+ABN6AOBfNsmF3x1VSQ=;
	h=To:Subject:From:Date:From;
	b=FPSa6YlAj33WInsE3uh+3eqdg6yXxEz1Ik/eELFzSDUVFcAB6e7nzTx73dk7F3/Ho
	 E074HtvQxUrLp/7VsLqZoiAdMFQlXqOIHKDJmP5vUxWnkB0SVVXjMaJGtLjZzmMWYm
	 VCDSH99PK5L5KEQcaa+fqz8snjnKl3wo5Cjlz3UN1+2Qx3eCloEWZhQYMPZlwUH3I/
	 e2gD4fcl/u46Ozx6Z9QFNCj1FqA0iVjZisX41JtkdztqbD5nzgzXGz8VRXls/55KLk
	 1v1t4jIeXAl+njW5jzoB2rS9OVo3klfxd6Sd5gYK7BnmaRiEi5Jf1mOwC0tKXsrjsh
	 Ka5ocujt9YshQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0FDDC6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 10:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167939388584.8185.17490104125070806246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3915cc87c5d56043c64163b61c9575f410620334b58095c6fbfc4b11a88028d8
Date: Tue, 21 Mar 2023 10:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679393885
