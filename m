Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353BE7E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 23:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653177059;
	h=To:Subject:From:Message-Id:Date;
	bh=mJxX+9hvLZeA/vXXR9jJcNrthb6wYN+U328JdeFG2es=;
	b=hOW7J+A7f+4HYKAI02Hyifv5eZqXE38EnftEb5rxx0lPe2D1PlPODk/caAaCuWoe
	UYHXqCTkasv9kUxmrEHpVD21B28WlzSFGnhBDfYfjtpKi8f6oRg6nd1dbc4Kk3vFYDd
	6msfwNel9SkHum7IvavINoblf8qVh4eejrFJKXbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653177059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mJxX+9hvLZeA/vXXR9jJcNrthb6wYN+U328JdeFG2es=;
	b=UFMpAGmphj5FHDWbGHwFnGhgH+FiKJCWd9/b60ekW4y6Ep2koxh/KSB+tc7/iPZn
	teIQKGMDlFLdQOu7Z6ioOyrOhAmC9DwZTqqIq3nhTM1xnjyBG/GyLPuhOs0q51481/8
	1+J9TeOempwPs+ej8a091w2uj36BEwQI5nGWDzB4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9080863-a536e447-73c2-4e08-bbf6-e2a41d44c667-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0912753fa49094bf2f112ab9019b6af58d168af2e6209b587388faced057ba49
Date: Sat, 21 May 2022 23:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653177059
