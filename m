Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70A910FC
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66077C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669108254;
	bh=OA4mA20fgcKNILPDaF1HIeHoCG9lrvlb8HTNwvsujAQ=;
	h=To:Subject:From:Date:From;
	b=ZPifzBj4vSiQsBVyb9JQgXD+sfFQpwtlhpdl8KFJNDawCk6aAk439x3ULDXgLoAOP
	 UXbmqqrJ2gDf6rqSxlD6fMirG/oAhiIElkKWvv8x+4UCKLTsziqvf1PPNKlrOSbId6
	 RuNlBfaDwDIK+XhvFeNLhhdJU05BkCoMZi7pmLw6hYjI2Gbq0JTDDFIZhXjoBsQ0j4
	 ru9KdKRMdO5xk84hqCtwXtMRmo0nbiQCmJ6bu/2lBDuZ9FZHKR+76jne188+1Mm861
	 1Q/NhywEJpWyejhaaqV9cYnNUtznSP3JgqbsLycV/CVGnJ2/kcj3vpG7yiPAg00Zmv
	 nwMhPgxgMx44g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513B6C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166910825431.28826.12343873008598409946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86321a762aaa0480e062c7ddbdda82437a4e418daaa7005dba79808347063e18
Date: Tue, 22 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669108254
