Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448AB3C4161
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784533114; cv=none; b=TRfq0XBHGvMgl0WSeVpxU8cZSEsaLW3skfNe512cDmhIbzTC8bvD7VUbjIXp/3MtKX/RnWiXz0kJ7dVu5N8fhYJRd7Z94tqb4VtyspogPVMsgAoN7Rqc0NnqaEMhfHH9HN6cTpKoiPe6Om+G3EoKdb43YVdfhujMnjN7oym0VTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784533114; c=relaxed/simple;
	bh=ZiftuwirkwCkEk4yLT5QpIB+toSIvkBp+/Kc8v16g/w=;
	h=To:Subject:From:Message-Id:Date; b=ZHXn5tas0tn/BkDcSSRSzK2wK8nN9gKuvbLk/kUTcVP+iuXx/3bmQNf3AZiVj6WCk7cbXOtl6+It6MzuVeMuA7PpDnSSqpq+Jm4TC3NJpr8tIRkGagzOZdKdJvB/gxQNr42wzE9ZNv/ZQdV8GFjYGHLglyGrzbD4os1IV9j5tts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRsesCWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRsesCWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01E6C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784533113;
	bh=ZiftuwirkwCkEk4yLT5QpIB+toSIvkBp+/Kc8v16g/w=;
	h=To:Subject:From:Date:From;
	b=tRsesCWBgsVyYRcKsZ8Cii/3Fw8pehBP1d5SkeThSk2VZC+96urqBgu84sZpbqGmS
	 UKv/F+rCzeQoJWoe4tbCifq6A3RgQLVInzru0Bf96v9X/Bcpg3JyxZ2yx0DKOL1rDH
	 MM4zIcQjqlj0XnUGgJVQHMn4te2HY+YBPatcvHVB/g4o7HAwdWr08aLKkCfORPNozM
	 3VLFlkJaWHQI7xiq9CMN2objvaEnxAMQYI2rBt8KMSdIaXmQeYq3WR3knTCqNXy0HB
	 9I2j5cEZzOd6bwsf/Ew9LMROzE5ajVYuEne6PAoTNuZWGjT3e8t+NlPtQxFQ5w3XWZ
	 v2dmhQdch77aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB078C44524
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453311369.32559.11418243238051931691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29eb2de6243fc605eb578325ee232aaad462f18cab55a03348bca6354771189
Date: Mon, 20 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784533113
