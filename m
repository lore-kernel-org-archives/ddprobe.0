Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72D27C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 05:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653628439;
	h=To:Subject:From:Message-Id:Date;
	bh=w/hpVnGz7Xs1xqsnEplZpg+qDg1JBHJ+1gNI+viVRmE=;
	b=Pku0SQT0tQoPzTvO4qFwe4N99L3ofGPo3vvomv+Jkcee8NSBMZbutxPMOiBmIhYR
	Sa4I4x6YFGaAhmi37nZ7rZcWznhbW/kEKnHMygSt6vLScsZVQq0phifKZuqGD9VxkYk
	x1vSDDO2/RmumRQW2F67vcD99PzBOfHqBwfdBDA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653628439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w/hpVnGz7Xs1xqsnEplZpg+qDg1JBHJ+1gNI+viVRmE=;
	b=fodK6TtERP7+zVUofKz0gHmKxR3/epGaV0P5oHGd41RHgN5vOfYqAcsTJ/iTlSWa
	iyeP+9WCgCJ7eK4bl+DAy5WD/CjBbgbYZuAg7tFZW3/TYzhW1UXmFb+VYk2mgxc7XGx
	/Oi376VIHvFxKxiCpUkdSxO3/iZvOt5wr53D8PHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018103ef8ae9-8bb67895-3a04-4342-8e29-cc03c8d71e51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfd2f1745c3e9050232b4c95e0764c82f42bbf2b64471745680cca9ef9a81e48
Date: Fri, 27 May 2022 05:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653628439
