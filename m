Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066177B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 06:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650178498;
	h=To:Subject:From:Message-Id:Date;
	bh=2ta6qTDXIV7CL6sDx8khlgF4b9lPmRp7Is2GXXoVKh4=;
	b=T/WIgD/WuuqLqUbLlwz0wHj99XA0XPm9SckQkuuevvMwkKKE8g982ft197HY9EIA
	9rsNUT5/TLLz2jG9TS2n/40zI0WkT7pG05bOGnZJWTrv0Xi77JcgUl0ESq24fh5311q
	sJUAv5BM6GHJhfX0J6MCRv8qn24/xjDgweRlcyns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650178498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2ta6qTDXIV7CL6sDx8khlgF4b9lPmRp7Is2GXXoVKh4=;
	b=Dg4kepJJzEX7HUsqfYYE9vgdq1fCuLtg4VznAsbIQoCJVZ1SJS417RxqsPlkQkuW
	x2Xt++27Dj78mvpjQBEea4m+o2kMAlfOU0+7OkfeZZBobcquz9apeWqNm3b541Ld9He
	cbGxMXC4eU7akpWWjcar5H+SuZz90pX3tUogLmxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180364d9ed8-80174929-bf72-405d-a662-11e3e6620022-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8501e587b252e119d733e93a690c6d80cbd8d22b09d704fd0f3f8a7227a7ef16
Date: Sun, 17 Apr 2022 06:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650178498
