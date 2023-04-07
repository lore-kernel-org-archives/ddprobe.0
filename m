Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F41FAFE7
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 21:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 044DAC433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 21:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680904266;
	bh=IXoM730672j4ui6puRt2U1kdGdkskqjwnymXSFav/gM=;
	h=To:Subject:From:Date:From;
	b=BQwrvP+AODF/3wSBoxvhKdTUUCsH5uwzFCMl0wkEsdfP3UEP+VxYkIsrVVZdjQAKW
	 bKqK54VwyFVHY6ocB0g0ULT7W8ctPqVRlDH+j25qmHJfSrBHUX98py86ubV+a/Fz+f
	 65wKxcmOmZGohF6RHP7N8heZ+Okvv4a7yK2JN2DHzCMMfnUhZ+43Fd4y2G46bCDCv8
	 /9q2PePBgmWqrIUrZYFwIrNHo2VIldaHQa7H/zNi50bWyt+cb0XV/KMHUUDKgCuRnJ
	 A2IMr2OHpoGgKSBWuQb+9GATPv+jNr0t5UavsPZya8oM80ordTQGaSE64hKEdBk1aw
	 vhNCcTHFZq1Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D80DEC76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 21:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168090426587.26050.2598011075601513020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f59f73c461b1a1a1508ee2e74dd0a7a7ae579d50ba3eba1a8f8e121193a32e
Date: Fri, 07 Apr 2023 21:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680904265
