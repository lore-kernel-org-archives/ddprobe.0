Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCFB625
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645509684;
	h=To:Subject:From:Message-Id:Date;
	bh=nVmhk2yDLe9fAx+TNiSXHLkvRyoLftqCdtsNJgYYPH0=;
	b=e+9r1tFODr64FNRGzeUVjnYX13un5HT71M+ih5SyN/QmlYzQPBQjQ3+78OQZPmnu
	LV005QVG4nrJtk5nGvkFIVKgkFA5PetccMc32Z8G9YmJTeawhoL5nCq9DrYAzk/P10m
	pjR6wU+E/hrP30h6VD6ss1nV7/UYR15WxYFuKBOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645509684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nVmhk2yDLe9fAx+TNiSXHLkvRyoLftqCdtsNJgYYPH0=;
	b=lgLZUxUEomra5Uo5byWaCappKJKvCVhGCjDuHai4G3pbYOEHfngBZLvep+t1NCoH
	af7zM4wyDoZn5AmlmWpaQBTdiJM3RiwVhxN2fdaIgRLW1Kz8pfZv9BjL4oAFQDtu/ta
	yGco/QFFDa85QU1rqtDfbN9dtQIYyCGSOIhPV04A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20052df7-4d942563-8025-4e7f-b38b-00cb671cec79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7c1a59f66cf113e21fcdfbb42849e3dca7d79b95ecf625a959682a0ca24d9a3
Date: Tue, 22 Feb 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645509684
