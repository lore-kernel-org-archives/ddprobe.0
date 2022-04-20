Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0475310ED
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 02:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650422458;
	h=To:Subject:From:Message-Id:Date;
	bh=9iJsncfRqeOVhFMOJJtXqmqr2qXsLnh05E8CDw5IxtY=;
	b=KGq0MgIdMXb+Mi0zXPkML7nn8eYxYXWbQtyOJTSgKsz+7IFzO/Io6jsqWfhSD1Sb
	HYlmKygihI+/mUqq4X7m8dDqKZ95Oeph/99tG7usEACJf/Cg14+BhAyqys9oipkOW+K
	YSG+Yi9gslXq6Pgw+IBLMqMAw03cvPnhwMAnn558=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650422458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9iJsncfRqeOVhFMOJJtXqmqr2qXsLnh05E8CDw5IxtY=;
	b=fLL2ovI/cK6x2yeCnLMeshSh3isVmAfoIBJYSKH7NABUl8QZ4KPmFF7MFHwHQoyF
	vhjtTcJJG5tFRGRqRLhLH9yHduN68YfPWmpnKP9fYKAR9VjBAT9oXa2R7O0QX7wGs8O
	tBF1GddlGPRBzPrSlsZHuwFkOCOAQCvhUsZaFnfo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018044d82791-af284004-d9f6-4c63-89ce-09948c85b682-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10504d0264716fdef0b4635edbdb383e8210b46204045c30dfa72600f800ed30
Date: Wed, 20 Apr 2022 02:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650422458
