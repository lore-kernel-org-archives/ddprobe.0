Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B02524EA6
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 12:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DC1C433D2
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 12:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684238585;
	bh=8PBnis80YHk6Cs5bDkTxcuqd73ieFneyGZ64y7MgK5A=;
	h=To:Subject:From:Date:From;
	b=bAQjtVFVKA5dRcpCG8H0NqZEk5/xiLQKupxIi5GxDfunZje5JJybkZiw1qpq+ULeK
	 vZsO1+KwXBWXIDAIesvq/XPY1mvxqxHB8sCg7CUPeiBMIl3S8M+WPdmlRyVwouiWsA
	 eaxRvSVBreH9H4oZ6S/YgnIp7ysEk3tlnvAHD98kgfujVikThuY29+WGa8JRxyTU/t
	 Z3kLPldUs7KO9tq9odpX8cevglAAZKT39LWD/Vn0T61DtLhrJTYmM10aU7xhEl1CA9
	 6WCI4kRrImRuqN+0hj5RSrgoc+px97ZuwWTLrboDHxYkhze1dD5Tvuym4z1SrEAlZr
	 PfTMj+nuW5M+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCE3C77B75
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 12:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168423858576.4943.8920917918219703184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185087d2e18a5de8e6c38d133bba0cae57be3c0cd1f6dd9be419831518d8cb50
Date: Tue, 16 May 2023 12:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684238585
