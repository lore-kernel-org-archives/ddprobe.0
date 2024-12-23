Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF541AE01E
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734986154; cv=none; b=J3gTuY/T2JFihwrDjJ8KI0qfUpkd3ydF2sxKt9X4qVr7O1yAJD+Ofm6tm07jhhaW1w9QZssX4DNrT6Y+GP2QEkmJIuOdfFPI/mSXZH6h0QN5f5JIca0fuVeJrZQYiQ1AogvnHzuo7i84l6fIe6ag2ppvR4KSEPoMSKKkW9H7RBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734986154; c=relaxed/simple;
	bh=3GKlcXofpmgLY3mkW0QhpF/aI3lS+4QNt9SWPsjvODk=;
	h=To:Subject:From:Message-Id:Date; b=ZibqY1rk11fWUFV4y0Z0Zj2rzLTxbo/CRNzHLrskEs5mYVsqC9ZLjWXhq8LnFty3zdd76Gjf+pFUoavKParYha4di6LOm/qvl0cELbzLP3NbV9v4c9UdQY04oTkn1/NNjVSLcUiECnIppgaaFDzGGYyrDpZDDbf8tHvRhBcFDAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SA2YK/3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SA2YK/3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F0CC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734986153;
	bh=3GKlcXofpmgLY3mkW0QhpF/aI3lS+4QNt9SWPsjvODk=;
	h=To:Subject:From:Date:From;
	b=SA2YK/3D8Ua76vocyItTTvQHqhz2uA0hLdCxQXtO6ZHRUWlXiRZEXujy4f+hTOcR7
	 367dg2O/dZ0sV8dD6ugMiLOfFCo/o8eMuxQR8qW0rRp5tQ9Lush9zJOoXkWq8rGYsZ
	 XnH5JFkBWAVQLLEXnptfQscz9keHMEYZSi1mn4cE23bM7x8vJ22dQZX0vqeOlu1T1m
	 p60ASyyMMNWQ1aG22pP+u/FPz+jHOip/6wQfYZE2X0ORC1EaOYWDlT0nFuuy+gt9zr
	 +RHsdbv8ioBV9rpYYCVPk1D6/HrEYFxjNNUTP+1YfMvQILz7Q/I89rFZC8DuEGte3+
	 +5qq2430lWu6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988C5E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173498615358.3198.18286705909798718110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d86c5dc29973cb462c6ddffb3da9be768f38f12999b1caec755ac23225677d
Date: Mon, 23 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734986153
