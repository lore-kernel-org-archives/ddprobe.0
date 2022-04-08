Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECB629A8
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 17:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649440738;
	h=To:Subject:From:Message-Id:Date;
	bh=OXvQNuuEuG1lTeeQpQFjjJBoo1GXBAYmsrh96DUic/Y=;
	b=D5awMIL+9z94foB0crAk4uFSNIMviaq8OjafEqwE4ANpne5hhSCstp+m04mpix97
	Jb9TfX73trZq+ZmLzNPG5SYPz5K0PmxZGvXVE34oQ8RR5Q5dhBOPGP9jXImdVhucqb3
	nazBFN5NdY5fJyWXEt6hnIkeW6Pylg0aQy8xDXPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649440738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OXvQNuuEuG1lTeeQpQFjjJBoo1GXBAYmsrh96DUic/Y=;
	b=TTxmSogXr3l9yGdYPxhX4YRtE/YcQ/zU42Zp9FvO5sGY+X0EHuk1kUEgwDy205GT
	rL7cKQBmjJvPvhK/jD6+hGtIE4JljIft16TvT8SJP5c+tmolBMkT8WaXmL9ebb+rDJu
	Fdw9e+kA2Q+xJ8/kbDoeUlY5TE/ufQaMepFCqKt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800a544bf4-9ab3cc16-cb28-435b-b1e0-4c697c259fcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 655e47006cfb18923f2553e9840ae7e5a2a835c841e2185714dd83759ec4a11a
Date: Fri, 8 Apr 2022 17:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649440738
