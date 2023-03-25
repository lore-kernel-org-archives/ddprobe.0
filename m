Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C86F20EE
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 10:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0192DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679740926;
	bh=31bnlag3j7IXoAUKTY0xmip3AOes3iXiZbzpXggecDU=;
	h=To:Subject:From:Date:From;
	b=m+4p6og2F7Zp7adg57RdBb3h9iEEpdvJX26Urdu0Av5HcrWNxY04JQ+S8zRMDeGWH
	 qgzmfOkgIO7LO1VAeleaSRxn09Zc+lFsQFQmVFNBc1/Rs2VF+YL8qhJKeoVs8nQDjT
	 vmiXwHmJV/1Ah0UR55hd/Ju3RhwSA1/z8aRJyUo/UkD+sVOAIEYSruITKfdojB2yBR
	 q/fkU2tc+sMAzpfZSd/lOipn4mjrXVg8cFB1FF4GJrjsjHiwJsepTpN918RNnv97rv
	 Z9+8BQbj4Jmcv31oLykI9PQRMp0jb6fyEH7dh+MLvGcU05Md1eTA63PnPigMYnwT9R
	 RO1Eb+U8VOn/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D382DC6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 10:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167974092582.4995.17744651217466808738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f52832e63b4b239e0b6a87c84bd87f5c51184dc2182b3a1db21577845021c35
Date: Sat, 25 Mar 2023 10:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679740925
