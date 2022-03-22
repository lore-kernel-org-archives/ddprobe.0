Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3120C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647960384;
	h=To:Subject:From:Message-Id:Date;
	bh=B0OB+b9MSQAQWDuNkwOCe/Im3w0fOcWFFHK+saPxQD8=;
	b=a/VVGhsLlUbYWvan8afpFV2zhE93DH9tPubzODZ3oRcMsF108ZN692QklOLIkfrx
	67TrleJ/RmeyCEW34pF3aFXsAm456LYg8exJsBXyjkIUqqRvpSSh4s5IplEB2aD1pqd
	9NJfa203BJ914K8Ekh9tO+0zCbH6et2ZSXlwbc04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647960384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B0OB+b9MSQAQWDuNkwOCe/Im3w0fOcWFFHK+saPxQD8=;
	b=cXrVsmTpJT7qPm2/W+HXA95J3QOnnrCNNXtFdQf7nc3lcClEHF8/Wb/1+UQt7GhX
	7++OrPUFz8sNi77CYHd6T+bFiJljJQKGa5YH+oejZFA2OYgoB094twqNdTMH+6Jbthl
	+FHKFWQYLHrcy3xefX4veH98iml078KL4a90YvVk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb217e4d8-cb9bc1dd-300f-4af3-8445-9a869fc33fe1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7e4ee9e7cdb7f3cd64ab0e5d36f546a0b1f1ca0aa070c6e88a3c9dfb2e7a7d8
Date: Tue, 22 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647960384
