Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5964010E8
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 00:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651191478;
	h=To:Subject:From:Message-Id:Date;
	bh=6B4nnxxFkFjHVpdjd03mLWXj5K1DN+b/tS3fltyE38Q=;
	b=gzRoM2+aHDGHJswAwzHBo8vRLqyYziHi+2yxTsRFsP7ZWOjkDYgVTbJXFTU6ah/C
	B3VnOy897YU/jOkiQMw7rjkqRJxhym2YqF/EDwZvJBRqiILNCli7JDy1P78WXvq0faY
	vBOdDJX4F6ikGPyr5IOr97fuZZEgRJZHTXzvBzkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651191478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6B4nnxxFkFjHVpdjd03mLWXj5K1DN+b/tS3fltyE38Q=;
	b=VvjzrOGGAwYq3fNUdBclpqQyUMZW+rYm3B6NYnRiNw6NdwfaZG8z//xojaDuQ8GE
	7cEdjV2tc050yQJOZ95hvADX5YtY2t8tEjV1TUvTUFOBTEJVwkVVEUmiLZxmogPW4ow
	6To7YzvojzY4et8jT3WRaYcJHj/te/EoGfQ+CsxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018072ae7811-0d7f3a8d-a382-4f59-93a0-ddc369501ccc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36a54b0554dc7e42147fcd8a708f6a3f991fe49b31c2209820290619f5780eb8
Date: Fri, 29 Apr 2022 00:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651191478
