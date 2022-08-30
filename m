Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B04287C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68081C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661820052;
	bh=mdrPOkTwKxaA7vzNML0/vSEk90PzwrNSTjR9t2W/nMs=;
	h=To:Subject:From:Date:From;
	b=j89yk7PC9E7exIskPMdC98xO2eW8j/2r/GRp+qRPgkLG/x8lrdtMH1t7BcSlZN8hl
	 K1ivAAT9wbE5dpCb8WtNAs1fdYStQO1X8kcY238ng5Vnn1Mi9kbtMvnwkprqn/0zo9
	 cSkGKiQ+56lz4Hw31qQeG70CiuYZ94LgwSd4rHOziYi54K5ZEUsqt3xIt4f/dUk4tL
	 XFjqmUjCJxFD0VJxZJXSyZTGFMJYMziG+9Sa10xlWKXQPdWAcDp0OgyFLdG6sO5xUg
	 qBfMQcWOcYnQExC8haB5p84y/gOhDBmXil1nFq/ezdX65x0e9PQUuymQXn4Widmu+l
	 sdmhyIFHtOGJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F264ECAAD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182005231.16258.12068704566479875747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99698a2ceebafca5bca11ec4be7a2dfedf4f3d9341f6df0cc7f195162a2c6f6
Date: Tue, 30 Aug 2022 00:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661820052
