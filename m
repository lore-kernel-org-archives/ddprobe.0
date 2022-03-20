Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D51258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647807984;
	h=To:Subject:From:Message-Id:Date;
	bh=ydKDWC2SwuM6divY9bJpFX6EJd9SJSGYm/toJtvdFpY=;
	b=S0sqkjmtKndenG0kCHQpzBbZ9BplYMANf11c0jV5himLdxJyHv+134bfrqqi/Zxc
	Gi4xRTuZdg2sZj3AcTNwTG+yBwJ6egvMo3CqAZnnRbdOL2YvWO2YzKmu86G20CR8/Ob
	lukrWtev22vooEyawmt1SEdHYLiWvtQ+RuarbGoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647807984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ydKDWC2SwuM6divY9bJpFX6EJd9SJSGYm/toJtvdFpY=;
	b=Qn5YdE7sljlb6doIz87kmBL8E6x4tnJUpFCHWpum/NwbeQCMPXE7gqnxr9cJ0+q5
	+ep7hKgYn50EJEQfXdC7/HKTUV+itrzfC/oVWjJ2lpi8ZqgtY2ahbt3RueRmENIJh3O
	pztSy0TxuCgwzxXuNvV7URbtxMt1KbN7jefO0/d4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa90274b9-0fddf168-8f64-4f47-8d46-84b1458818a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f3710ea602ae9b691b8857521bbff28c28f08b1dcdd228b6bf024cb2b52a678
Date: Sun, 20 Mar 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647807984
