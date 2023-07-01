Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E5B17D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 05:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A07C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 05:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688188448;
	bh=J+VWGWOXHcQXe91tjEahHIrLP+2J1rth1nvhxiADarg=;
	h=To:Subject:From:Date:From;
	b=rgwGPjulwpII6cEsC9Fu5jKJXoGnd2iVuOE9WJCvF9I1w9g+oShb6Jq8puopu5vzE
	 jA/WPNVyKrVjeHtRHQjcu+YE1NXPpJqw1oYVhCwVUQIcZHgbGPuyEskvqAjhfGvEj4
	 wFU7wyUOs3pqWztW+5wdgbx5dwYNV692LwYp6q/Xf2/NpD/EhkewUc39HdoMiTT4l6
	 v2z1Khdc2Xu+GZ3FWZ2mDkg7ToaQJIuihpNPtuWMwwlEKojLuWx1zEwKgvELnHH8/o
	 voOtE6jRK7EMYs4zZw4KhzcL8x9EL/K2xKA7eH3VUGFi9X72XYddvtaUDdQHFRXKKy
	 Fi/q0lROdyBoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3D8EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 05:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818844869.10254.13382500696741273789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709f4f908648a8aea89bfe22fdcc16882d137474a40ec0461e6311ccb8fee996
Date: Sat, 01 Jul 2023 05:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688188448
