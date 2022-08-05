Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639C17FF
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659661252;
	h=To:Subject:From:Message-Id:Date;
	bh=t3KIKr3p3g0dMDa5OlzElqctjYX/4Zmxg1nL7GCecO8=;
	b=WkFP6ttsAvCJF+X4XyDyCCCfAj977mMGN6eQouEE5SimOAw9VIvWwSBr6IqWMVaG
	KVfdDwIua3WOeyOr688eESNEB5P/jnY7lAmq+3H7Edz8zgjF7g18Pg66j46VKINv2fZ
	Vs+Jn6jYSIRKWPc9zGje7PTIqDya9NCHxQHiF4No=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659661252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t3KIKr3p3g0dMDa5OlzElqctjYX/4Zmxg1nL7GCecO8=;
	b=Sp0iDBwWcTBc+xKNlRx+m1K5eplGLTk79YmkFbypvX3rcAzHWVORgLrF1UVUPb7S
	yA/i3JxIF3VHv/iP8hdcIIRh7PzB5SE3v3EB4lI9I1iwyLoB9HZbYst4zqrE38HrLW9
	t5FZyiBJWw71ahLfwPkOTpfsjGLQslaXvza7WatU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826b84f7e6-18a2c301-1723-45a1-a296-3afd4ffd3032-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 346ae7fba81f179b4e7d6b6ac9cf87f90d6d38253d7393cf4168415457925e6f
Date: Fri, 5 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659661252
