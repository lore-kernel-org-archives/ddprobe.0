Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD1CEB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644915685;
	h=To:Subject:From:Message-Id:Date;
	bh=yDDDdmtYObjSsZ3+2X8MVuwbnGfdlvAF1n5y4cygFik=;
	b=kkECrssllGqv81M8ldLsio7Q44ERxessRSfC+foNEX+DgyT0TZ0/3NrNay2vl3JF
	gXQmZ+yKip10oUMZhxsaeNXfgBltvNMk6/Ev8++wtrMd1UlQNI/+wH0WaAUmmszOo73
	i5GMBHDun8YoDpcr8ZRyVz7JsUZFIr5HoG0gn6Ow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644915685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yDDDdmtYObjSsZ3+2X8MVuwbnGfdlvAF1n5y4cygFik=;
	b=dvJVfqVUskf9IzdKR9lviK1jUuGNDOcR+W1EAhDl//9N26u+AFbkUsKEdfwZrOPh
	lRkar51AeEj6l8ACZBgafg4YuYtvLPnrxaoXmmbOcew7WpyX6TQvlfTYZHtBq0ImcBd
	YOBcbMZfkG8vGUlaVe/3TDVYKYcUAAY6UbbE729Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc9d75b4-f677d140-ed7c-4f21-9b56-1e4a7df0c96d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6192090d1f9b439f9c8f6b7826812d2866b6114106ff9a335304587881a816dc
Date: Tue, 15 Feb 2022 09:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644915684
