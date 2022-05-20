Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDD82F4A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 17:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653068279;
	h=To:Subject:From:Message-Id:Date;
	bh=u7yqj2b1F92gJQxPyuj5NLxZmH5ob6rChWk2DkoOAvg=;
	b=COF+PsaAVO4IBHtr10vr4CPI+d27OqZks09ZAFqZKaJgXtSAjaMdDUZx87w6x3vk
	XC1szPFZuSfW5mFxBO0lF0q4AaCmp8GkBzjM82reoXtk3mxYHHCl3iD7ouo05dvony0
	/53MWZFg7oQkthy1wQ+xl6q0J3YFIw14vcHQBV04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653068279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u7yqj2b1F92gJQxPyuj5NLxZmH5ob6rChWk2DkoOAvg=;
	b=QZoAySckFbVWuw0NcWWaG5lmLZosUOFa+URanmXqtftmawfr+Muxv5WCwuK72PwS
	WYqRJ73Sqz9sKdbg9l0ABisz9H24Aybdn9D3DQO/cvsJ+qCMaBXXsXqL4Ux4r79+tqL
	IMkZg6MRrAWR/y8epmrPHRUJYMaKYvymHEFd5CEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e28c2dea-9d0bee5a-5955-4f29-bb35-8f4def2700d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 086066afd21c078a3452165c0212282a842f87cb802eab6ddb470702132620e0
Date: Fri, 20 May 2022 17:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653068279
