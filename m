Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E87A277C9D
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777498654; cv=none; b=c9KIR03UXh5wbYeY0eHz477Rgx5/IlOTVE3LGVIcKLh55a1ksSXW+HvL0U3w2E5obh3kKonxjeYnV3Hdjd+NImJldMjuWgsg+8OMA5d5b4tQnxSo6h5dWzRjgF4zT2gULR2PWW1iCh5dfax5ifdZFzfkPYQ2ZrUD8Q4fX6I7ktc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777498654; c=relaxed/simple;
	bh=aVbxa0kcWe04LiMLm38YiodZViy2HP0KnEpKS1um6TI=;
	h=To:Subject:From:Message-Id:Date; b=gDXbfMzEQWcIq1qwcvwB+2/La1JFKHY7INCbmwfnkCKcDLvRH5+66TEe7XE9pvhYejS4wIDnMU5PeHZ2wvKA4U56lh4INl0YnrK2v3MeQ9/Ww8OWv5ItpT+NgSCvqmkpX+zv6HXdvL3anmqWQvv4qVkS/WUR2KuYvpJdDe14Pp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdnhyiAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdnhyiAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFC7C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777498653;
	bh=aVbxa0kcWe04LiMLm38YiodZViy2HP0KnEpKS1um6TI=;
	h=To:Subject:From:Date:From;
	b=NdnhyiAqhXz3AARn5OcLUklnByHDfmAiOCoRVV+E3JfZ+3H4l+Qyg9joOi/oc/hvH
	 k5nNYPqDhEjOXXVYKZQw0UVCBqy6EiP2H48M+XF1VuesHfz6OBFraDHnL98PHrpAxv
	 NGVzuIeWvErfezbt7feTYTUAIIrGIkEss75acNarxsDBPSdRN8apTXAVzy1tYx5IeS
	 pdfskrEwfdiv2NKvJ3HHXl8/ywPV3jWpOkCiFIgJ4bdtPhO0PrGHl+1assePElVYNZ
	 YRunm4DojjdR0BNLjKH5b6bL1RXv+p4oK5nosjto1Pcour9evbOrT5oJPqnBBiQGSV
	 frv+6ropt90+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ED4FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749865368.23351.8985801889461785962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6ec1a0a183d5f88f4e040942bb394e8808f63bd63849ce189c1ddada68db2f
Date: Wed, 29 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777498653
