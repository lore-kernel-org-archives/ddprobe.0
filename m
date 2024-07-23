Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA8922097
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721727953; cv=none; b=gql2qDz2vN35gNHA+hiRjuGqdT7P+ehjEQ/r7yT1fHp3CYB0WtfguZOOQiKyTolh9wWAGXqqzMR+g0bqxvFQYnHhKbMEMGHGKiE+9/nXy4ALHQk3etDZe8G37rRuiKsVn+3q1a9JspfzmX8hZLt7m7gbhfj3UfLFGZABP4P5RJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721727953; c=relaxed/simple;
	bh=WuyQODKO72NaJSU1PKwtrdzFPffEckfmQnOE4ut/J9U=;
	h=To:Subject:From:Message-Id:Date; b=Mkbh6Tg2AVDC+OrCy6qWmqHoeKpAYUcIePHIG2VdSU1X/Fx6MwkhFy6xTWDCM9ZnvVdbL7TPps1ESBDvwe7RfQBsKdn8pWNQddqQ7nCp3sC3XNkxJNwW6L5aU//ZICzNKATqHwLOlLpZnmAxpE7sktGp3R8FTKppqmDZFLLtIMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoKDkzHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoKDkzHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB921C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721727953;
	bh=WuyQODKO72NaJSU1PKwtrdzFPffEckfmQnOE4ut/J9U=;
	h=To:Subject:From:Date:From;
	b=AoKDkzHEvXCnQnWn8N8ZIAisHt4YiSht84wNtIcpTmFHeQq7vT1gkDVRJn1Ldn4Yb
	 W1Nm7Y0C/yXOyrE5KLQP+0LbcFmUNI3ph8UW3PsKqlMmCWQ7imh+tW+5ZsjnDvLaz+
	 dQ7F6rS4ZFJuqN8+QI13yNw5jT6W5EfM60BOlg0r3+17ah9/RbPZjAY94AdK0/CczJ
	 bJzFOfM01wEwZ+qPuq2XgMZ1La6r+BrMpzt7X0WvhUZZwf2L/JqqrCFxwmSv77A1wH
	 QtbZg46JnJoFAooWLxokLV8Rh+lW1S7wn8mq5a4oyOa7Qn9iC0/55aWAxI6ElSJyaa
	 OLd1IFh70hSAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995A7C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172172795362.26337.679458419164624544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292312b75faa42a181e8ab05e8472fed172131627086e03104ea94cfdd27d4ae
Date: Tue, 23 Jul 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721727953
