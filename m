Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBBC1851
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 16:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651250518;
	h=To:Subject:From:Message-Id:Date;
	bh=2RIDVmmxR1wxznALwDaw2UVdWJRCDnrOJjwcZv5hVKY=;
	b=kus8cd3dXkkwODro2V1a8ipWi/UGoD1RqNQqtl9rmz7qAcMiXhv9z31bu7givsbe
	HMNnclqJ8yCRESgYDfMSU0HrgeD/uoBukSZLwn/X3QZeNgXQKlNxSPaZZg5+/vTpELM
	f8RyKiDbqOYVbWlB28+/kTpwJoDwSKkU3ttb6Sok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651250518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2RIDVmmxR1wxznALwDaw2UVdWJRCDnrOJjwcZv5hVKY=;
	b=FPB3D8mWlJ7oNJNfra3OvJoKUVi0GUk7RZY79JS0g/HlZbNH9hwmbgg4KD76Gcna
	gKyFOj0YZXhdiTdBviqtWx6mmcKmlXavlBG9dbvluszX+ByAJ8uQgNqP3ZZU6h8mAt2
	9rZ4SNaD4pmznKuj9iaT2SKkGwg8N3SocKreuiy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807633593e-8bcad24b-79d0-4bc8-90ad-212d4e84fe2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c11ae15feb9aa60cfe68d01f95943ec892e9da2d4834b6f5b27d5feea7ba3dc
Date: Fri, 29 Apr 2022 16:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651250518
